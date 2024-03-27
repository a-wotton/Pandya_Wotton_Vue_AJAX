const agents = Vue.createApp({
    created() {
        console.log("Created hook is called")
        fetch("http://localhost:8888/Pandya_Wotton_Vue_AJAX/lumen/public/agents")
        .then(res => res.json())
        .then(data => {
            console.log(data);
            this.agentsData = data;
        })
        .catch(error => {
            console.log(error);
        });
    },

    data() {
        return {
            agentsData: [],
            imageUrl: "",
        }
    },
})
agents.mount("#app")