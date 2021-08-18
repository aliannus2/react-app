const scanner = require('sonarqube-scanner');
scanner(
    {
        serverUrl: "http://localhost:9000",
        token: "ee3d4f2cd90a7abc8b0612f3658cd64e99ade689",
        options: {
            "sonar.sources": "./src"
        },
    },
    () => process.exit()
)
