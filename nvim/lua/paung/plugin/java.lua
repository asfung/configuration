
-- deklar varible bang
local jdtls_root_dir = vim.fn.stdpath('data') .. '/mason/packages/jdtls'
local config_dir = jdtls_root_dir .. '/config_linux'
local plugins_dir = jdtls_root_dir .. '/plugins/'
local jar_path = plugins_dir .. 'org.eclipse.equinox.launcher_1.6.600.v20231106-1826.jar'
local lombok_path = jdtls_root_dir .. 'lombok.jar'

-- workspace for new project with java
local workspace_dir = vim.fn.stdpath('data') .. 'Java-Workspace'
local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local root_dir = require("jdtls.setup").find_root(root_markers)
if root_dir == "" then
  return
end

-- the jdtls configuartion verbose 
local config = {

    cmd = {
        'java',

        -- core config
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-javaagent:' .. lombok_path,
        '-Xmx1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

        '-jar', jar_path,
        '-configuration', config_dir,
        '-data', workspace_dir,
    },

    root_dir = root_dir,

    -- Here you can configure eclipse.jdt.ls specific settings
    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
    -- for a list of options
    settings = {
        java = {

            home = '/home/Asfung/.sdkman/candidates/java/17.0.9-oracle/',
            eclipse = {
                downloadSources = true,
            },
            configuration = {
                updateBuildConfiguration = "interactive",
                runtimes = {
                    {
                        name = "Java21-graalvm",
                        path = '/home/Asfung/.sdkman/candidates/java/21-graalce/',
                    },
                    {
                        name = "Java17-Oracle",
                        path = '/home/Asfung/.sdkman/candidates/java/17.0.9-oracle/',
                    }
                }
            },

            maven = {
                downloadSources = true,
            },
            implementationsCodeLens = {
                enabled = true,
            },
            referencesCodeLens = {
                enabled = true,
            },
            references = {
                includeDecompiledSources = true,
            },
            format = {
                enabled = true,
                settings = {
                    url = vim.fn.stdpath "config" .. "/lang-servers/ij-java-google-style.xml",
                    profile = "GoogleStyle",
                },
            },
        },

        signatureHelp = { enabled = true },
        completion = {
            favoriteStaticMembers = {
                "org.hamcrest.MatcherAssert.assertThat",
                "org.hamcrest.Matchers.*",
                "org.hamcrest.CoreMatchers.*",
                "org.junit.jupiter.api.Assertions.*",
                "java.util.Objects.requireNonNull",
                "java.util.Objects.requireNonNullElse",
                "org.mockito.Mockito.*",
            },
            importOrder = {
                "java",
                "javax",
                "com",
                "org"
            },
        },
        extendedClientCapabilities = extendedClientCapabilities,
        sources = {
            organizeImports = {
                starThreshold = 9999,
                staticStarThreshold = 9999,
            },
        },
        codeGeneration = {
            toString = {
                template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
            },
            useBlocks = true,
        },
    },
    

}


require('jdtls').start_or_attach(config)

