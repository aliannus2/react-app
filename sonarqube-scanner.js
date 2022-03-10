const scanner = require('sonarqube-scanner');
scanner(
    {
        serverUrl: "https://tkxel-team.com/",
        token: "295036230808088aa349648f95754477018cc75f",
        options: {
            "sonar.sources": "./src"
        },
    },
    () => process.exit()
)
