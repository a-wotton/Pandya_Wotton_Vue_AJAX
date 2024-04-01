const agents = Vue.createApp({
    created() {
        console.log("Created hook is called");
        fetch("http://localhost:8888/Pandya_Wotton_Vue_AJAX/lumen/public/agents")
          .then(res => {
            if (!res.ok) {
              throw new Error('Network response was not ok');
            }
            return res.json();
          })
          .then(data => {
            console.log(data);
            this.agentsData = data;
          })
          .catch(error => {
            console.error('Error fetching data:', error);
            this.error = "An error occurred while fetching data. Please try again later.";
          });
    },

    data() {
        return {
            agentsData: [],
            agentDetails: {}, 
            error: "Sorry we can't connect at this moment", 
        }
    },

    methods: {
      
        getAgent(agentName) {
            let name = agentName.trim();
            
            let agentData = this.agentsData.find(agent => agent.name.toLowerCase() === name.toLowerCase());
        
            if (agentData) {
                const uuid = agentData.uuid; 
                
                
                fetch(`https://valorant-api.com/v1/agents/${uuid}`)
                    .then(res => {
                        if (!res.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return res.json();
                    })
                    .then(data => {
                        if (data.status === 200 && data.data) {
                            const agent = data.data;
                            this.error = ""; 
                            this.agentDetails = {
                                agentName: agent.displayName,
                                role: agent.role.displayName,
                                description: agent.description,
                                abilities: agent.abilities,
                                fullPortraitV2: agent.fullPortraitV2,
                            
                            };
                        } else {
                            this.error = "Failed to fetch agent details. Try again.";
                        }
                    })
                    .catch(error => {
                        console.error('Error fetching agent:', error);
                        this.error = "An error occurred while fetching the agent. Please try again later.";
                    });
            } else {
                this.error = "Agent not found in local data.";
            }
        }
    }

}).mount("#app");
