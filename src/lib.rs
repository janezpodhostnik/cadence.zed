use zed_extension_api::{self as zed, serde_json, Result};

struct CadenceExtension;

impl zed::Extension for CadenceExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let path = worktree.which("flow").ok_or_else(|| {
            "Please install the Flow CLI , see https://developers.flow.com/tools/flow-cli."
                .to_string()
        })?;

        Ok(zed::Command {
            command: path,
            args: ["cadence", "language-server", "--enable-flow-client=false"]
                .iter()
                .map(|s| s.to_string())
                .collect(),
            env: vec![],
        })
    }

    fn language_server_initialization_options(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> Result<Option<serde_json::Value>> {
        Ok(Some(serde_json::json!({})))
    }
}

zed::register_extension!(CadenceExtension);
