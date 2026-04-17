-- lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      intelephense = {
        settings = {
          intelephense = {
            -- Add the stubs you need here
            stubs = {
              "bcmath",
              "bz2",
              "Core",
              "curl",
              "date",
              "dom",
              "fileinfo",
              "filter",
              "hash",
              "iconv",
              "intl",
              "json",
              "libxml",
              "mbstring",
              "mcrypt",
              "mysqli",
              "openssl",
              "pcre",
              "PDO",        
              "pdo_mysql",  
              "Phar",
              "readline",
              "regex",
              "session",
              "SimpleXML",
              "sockets",
              "sodium",
              "standard",
              "superglobals",
              "tokenizer",
              "xml",
              "xmlreader",
              "xmlwriter",
              "zip",
              "zlib",
            },
          },
        },
      },
    },
  },
}
