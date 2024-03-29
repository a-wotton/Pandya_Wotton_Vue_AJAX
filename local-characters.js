const agents = Vue.createApp({
    created() {
        console.log("Created hook is called")
        fetch("http://localhost/Pandya_Wotton_Vue_AJAX/lumen/public/agents")
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
            agentDetails: {}, // agent deatils
            error: "Sorry we cant connect at this moment", // Error message if it fails to load
        }
    },

    methods: {
      
        getAgent(agentName) {
            let name = agentName.trim();
        
            
            let agentData = this.agentsData.find(agent => agent.name === name);
        
            if (agentData) {
                
                fetch(`https://valorant-api.com/v1/agents?name=${encodeURIComponent(name)}`)
                    .then(res => {
                        if (!res.ok) {
                            throw new Error('Network response was not ok');
                        }
                        return res.json();
                    })
                    .then(data => {
                        if (data.status === 200 && data.data.length > 0) {
                            
                            const agent = data.data[0];
                            this.error = "Nothing to show";
                            this.agentDetails = {
                                agentName: agent.displayName,
                                role: agent.role.displayName,
                                description: agent.description,
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

})
agents.mount("#app")