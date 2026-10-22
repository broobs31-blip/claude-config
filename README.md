# claude-config

Mes agents et mon CLAUDE.md global, pour les utiliser aussi dans les sessions Claude Code cloud.

## Ajouter mes agents
Copier les fichiers de `~/.claude/agents/` (sur mon ordinateur) dans le dossier `agents/` de ce dépôt, puis commit et push.

## Activer en cloud
Dans claude.ai/code : menu de l'environnement (barre de titre de la session) → Modifier → Setup script, ajouter :

```bash
git clone --depth 1 https://github.com/<mon-compte>/claude-config.git /tmp/claude-config
bash /tmp/claude-config/install.sh
```

Toutes les nouvelles sessions de cet environnement auront alors les agents et le CLAUDE.md dans `~/.claude`.
