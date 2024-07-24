return {
  'mhinz/vim-startify',
  config = function()
    local current_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':t')


    -- Get modified files in the current git repository
    local function git_modified()
      local handle = io.popen('git ls-files -m 2>/dev/null')
      if handle == nil then
        return {}
      end
      local result = handle:read("*a")
      handle:close()

      local files = {}
      for line in string.gmatch(result, '[^\r\n]+') do
        table.insert(files, {line = line, path = line})
      end

      return files
    end

    vim.api.nvim_exec([[
      command! FindFiles lua require('telescope.builtin').find_files()
      command! FindText lua require('telescope.builtin').live_grep()
      command! FindRecent lua require('telescope.builtin').oldfiles({ only_cwd = true })
    ]], false)

    -- Hide recently used files in the start screen
    vim.g.startify_lists = {
      { type = git_modified, header = { '  👀 Git Modified' }},
      { type = 'dir', header = { '  🔥 Recently opened directories ('..  current_dir .. ')' } },
      { type = 'commands', header = { '  🤖 Commands' }}
    }

    local function get_figlet_banner(text)
      -- Exécuter la commande système pour obtenir le texte formaté par figlet
      local handle = io.popen('figlet -w 100 ' .. text)
      if handle == nil then
        return {}
      end
      local result = handle:read('*a') -- Lire la sortie
      handle:close() -- Fermer le handle

      -- Traiter la sortie pour obtenir une table de lignes
      local lines = {}
      for line in result:gmatch('([^\r\n]*)\r?\n') do
        table.insert(lines, line)
      end

      return lines
    end

    local function custom_header(text)
      -- Obtenir le répertoire de travail actuel
      local current_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':t') -- Extraire le nom du répertoire
      -- Obtenir la bannière ASCII
      local banner_lines = get_figlet_banner(text)
      -- Ajouter le répertoire de travail à la fin de la bannière
      table.insert(banner_lines, 'Current repo -> ' .. current_dir)
      return banner_lines
    end

    vim.g.startify_custom_header = custom_header('Sheeeeeesh')

    vim.g.startify_commands = {
      { F = { '📂 Find file in project', ':FindFiles' }},
      { T = { '📝 Find text in files', ':FindText' }},
      { R = { '🚨 Explore recent files of project', ':FindRecent' }},
    }

  end,
}
