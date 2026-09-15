# Customizing the GitHub Copilot app

Customize the GitHub Copilot app so it works the way you and your team do.

Tailor the GitHub Copilot app to your workflows so your agents follow your conventions, use your preferred tools, and apply the right expertise to every task.

The **Customize** tab in the app sidebar allows you to discover and manage MCP servers, plugins, skills, and canvases in one place. From this tab, you can:

* Explore featured customizations as a starting point if you do not already know which customization you need.
* Browse by customization type.
* Find MCP servers by viewing trending options or browsing by category.
* Review customizations already available for you to use in the **Installed** view.

## Setting global and repository instructions

You can add instructions that apply globally or only to a specific repository.

### Setting global instructions

Global instructions apply to every session across all projects.

1. Open the app settings.
2. Click **Sessions**.
3. Under "Instructions," edit "App instructions."

### Setting repository-specific instructions

Repository-specific instructions apply to every session for the selected repository.

1. Open the app settings.
2. Under "Projects," click the repository.
3. Edit the "Instructions" field.

## Adding agent skills

Agent skills are folders of instructions, scripts, and resources that Copilot can load when relevant to improve its performance in specialized tasks. Any skills configured for your repositories or Copilot CLI are automatically available in the GitHub Copilot app. To add or manage skills, click **Customize** in the app sidebar, then click **Skills**.

For more information about agent skills, see [About agent skills](/en/copilot/concepts/agents/about-agent-skills).

For a GitHub-provided built-in skills reference, see [Built-in skills for the GitHub Copilot app](/en/copilot/reference/github-copilot-app-reference/built-in-skills).

## Configuring MCP servers

MCP servers connect the agent to external tools and data sources. Any MCP servers configured for your repositories or Copilot CLI are automatically available in the GitHub Copilot app.

To discover and install an MCP server:

1. Click **Customize** in the app sidebar.
2. Click **MCP**.
3. Explore featured or trending servers, browse by category, or add a custom server.
4. Select a server and follow the prompts to install it.

To view or manage MCP servers that are already installed, click **Installed**.

For more information about MCP, see [Adding MCP servers for GitHub Copilot CLI](/en/copilot/how-tos/copilot-cli/customize-copilot/add-mcp-servers).

## Using custom agents

Custom agents are specialized versions of Copilot cloud agent that you can tailor to specific tasks and workflows.

Use the agent picker dropdown in the prompt box to select a custom agent before or during a session.

Alternatively, type `/agent` in the prompt box to choose and invoke a custom agent.

For more information, see [About custom agents](/en/copilot/concepts/agents/cloud-agent/about-custom-agents).

## Adding plugins

Plugins are installable packages that add a preconfigured set of capabilities, such as skills, hooks, custom agents, MCP servers, and canvas extensions, extending the functionality of the GitHub Copilot app.

The **Plugins** view shows plugins from the marketplaces configured in the app. You can filter the list by marketplace or add a custom marketplace.

To browse and install a plugin:

1. Click **Customize** in the app sidebar, then click **Plugins**.
2. Optionally, use the marketplace dropdown to filter the available plugins.
3. Find the plugin you want to use, then click **Install**.

To add a custom marketplace:

1. In the **Plugins** view, click the <svg version="1.1" width="16" height="16" viewBox="0 0 16 16" class="octicon octicon-gear" aria-label="The marketplace settings icon" role="img"><path d="M8 0a8.2 8.2 0 0 1 .701.031C9.444.095 9.99.645 10.16 1.29l.288 1.107c.018.066.079.158.212.224.231.114.454.243.668.386.123.082.233.09.299.071l1.103-.303c.644-.176 1.392.021 1.82.63.27.385.506.792.704 1.218.315.675.111 1.422-.364 1.891l-.814.806c-.049.048-.098.147-.088.294.016.257.016.515 0 .772-.01.147.038.246.088.294l.814.806c.475.469.679 1.216.364 1.891a7.977 7.977 0 0 1-.704 1.217c-.428.61-1.176.807-1.82.63l-1.102-.302c-.067-.019-.177-.011-.3.071a5.909 5.909 0 0 1-.668.386c-.133.066-.194.158-.211.224l-.29 1.106c-.168.646-.715 1.196-1.458 1.26a8.006 8.006 0 0 1-1.402 0c-.743-.064-1.289-.614-1.458-1.26l-.289-1.106c-.018-.066-.079-.158-.212-.224a5.738 5.738 0 0 1-.668-.386c-.123-.082-.233-.09-.299-.071l-1.103.303c-.644.176-1.392-.021-1.82-.63a8.12 8.12 0 0 1-.704-1.218c-.315-.675-.111-1.422.363-1.891l.815-.806c.05-.048.098-.147.088-.294a6.214 6.214 0 0 1 0-.772c.01-.147-.038-.246-.088-.294l-.815-.806C.635 6.045.431 5.298.746 4.623a7.92 7.92 0 0 1 .704-1.217c.428-.61 1.176-.807 1.82-.63l1.102.302c.067.019.177.011.3-.071.214-.143.437-.272.668-.386.133-.066.194-.158.211-.224l.29-1.106C6.009.645 6.556.095 7.299.03 7.53.01 7.764 0 8 0Zm-.571 1.525c-.036.003-.108.036-.137.146l-.289 1.105c-.147.561-.549.967-.998 1.189-.173.086-.34.183-.5.29-.417.278-.97.423-1.529.27l-1.103-.303c-.109-.03-.175.016-.195.045-.22.312-.412.644-.573.99-.014.031-.021.11.059.19l.815.806c.411.406.562.957.53 1.456a4.709 4.709 0 0 0 0 .582c.032.499-.119 1.05-.53 1.456l-.815.806c-.081.08-.073.159-.059.19.162.346.353.677.573.989.02.03.085.076.195.046l1.102-.303c.56-.153 1.113-.008 1.53.27.161.107.328.204.501.29.447.222.85.629.997 1.189l.289 1.105c.029.109.101.143.137.146a6.6 6.6 0 0 0 1.142 0c.036-.003.108-.036.137-.146l.289-1.105c.147-.561.549-.967.998-1.189.173-.086.34-.183.5-.29.417-.278.97-.423 1.529-.27l1.103.303c.109.029.175-.016.195-.045.22-.313.411-.644.573-.99.014-.031.021-.11-.059-.19l-.815-.806c-.411-.406-.562-.957-.53-1.456a4.709 4.709 0 0 0 0-.582c-.032-.499.119-1.05.53-1.456l.815-.806c.081-.08.073-.159.059-.19a6.464 6.464 0 0 0-.573-.989c-.02-.03-.085-.076-.195-.046l-1.102.303c-.56.153-1.113.008-1.53-.27a4.44 4.44 0 0 0-.501-.29c-.447-.222-.85-.629-.997-1.189l-.289-1.105c-.029-.11-.101-.143-.137-.146a6.6 6.6 0 0 0-1.142 0ZM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM9.5 8a1.5 1.5 0 1 0-3.001.001A1.5 1.5 0 0 0 9.5 8Z"></path></svg> icon next to the marketplace dropdown.
2. Follow the prompts to add the GitHub repository or Git URL that hosts the marketplace.

For more information, see [About GitHub Copilot plugins](/en/copilot/concepts/agents/about-plugins).

## Working with canvas extensions

Use canvas extensions to build shared, agent-driven artifacts and interfaces for team or personal workflows. You can find canvases under **Canvas** in **Customize**, or use `/create-canvas` in a session to create your own. For more information, see [Working with canvas extensions in the GitHub Copilot app](/en/copilot/how-tos/github-copilot-app/working-with-canvas-extensions).

## Organization and enterprise management

Enterprise and organization owners can set policies to govern how Copilot is used across surfaces. For the major policies supported by the GitHub Copilot app, see [Supported surfaces for GitHub Copilot policies](/en/copilot/reference/supported-surfaces-for-policies).

Enterprises can also define a `managed-settings.json` file to control which actions users can take in supported Copilot clients, such as which plugins users can install and whether "YOLO-style" commands are permitted. See [Getting started with enterprise-managed settings](/en/copilot/how-tos/administer-copilot/manage-for-enterprise/use-managed-settings/get-started).
