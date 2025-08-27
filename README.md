# Keep Teams Awake

[![Install Addon Firefox](images/firefox-get-the-addon.png)](https://addons.mozilla.org/en-US/firefox/addon/keepteamsawake2/)


Keep Teams Awake is a very simple, barebones "mouse jiggler" browser extension for Microsoft Teams.

It works on Firefox and Chrome-based browsers.

This fork adds support for the following:

https://teams.microsoft.com.mcas.ms/ 

https://dod.teams.microsoft.us.mcas-gov.us/

### The problem

The web version of Microsoft Teams can't (and shouldn't!) track mouse or keyboard behavior unless it has focus.

This means that if you have a different browser tab/window open, or you are using a different program on your computer, then Teams will not be in focus, and it will not see any of your mouse or keyboard interactions.

This is good for privacy and security reasons, but it does present a problem: Teams will assume that you aren't using your computer.

Teams will then automatically set your status to "Away", making other people mistakenly think that you aren't available, and will also result in Teams not checking for new messages as regularly as it should.

This problem has become more apparent as Microsoft has shifted away from native desktop apps for some platforms (eg. Linux) and replaced the native apps with web versions, leaving those users with broken "Away" functionality.

### The solution

This browser extension sends fake mouse movement events to the Teams website at regular intervals to ensure that Teams remains active.

These aren't real mouse movement events. So your mouse won't move, but the website will think that it did.

Also, since they aren't real mouse movement events, it will work even if Teams isn't in the active browser tab, if it's on a different workspace/virtual desktop, and so on.

## Install

### Extension Store

For Firefox, you can install Keep Teams Awake from the [Firefox Addon website](https://addons.mozilla.org/en-US/firefox/addon/keepteamsawake2/).

For Chrome, you can install the extension from the [Chrome Web Store](https://chromewebstore.google.com/detail/keepteamsawake/acofimfooiojfhnokmddfgmlfnjnhobp).

### Direct Download

Download the [latest release](https://github.com/mcarr823/keep-teams-awake/releases/latest) from GitHub.

For Firefox, download the firefox.xpi file. Right-click on the downloaded file and choose to open it with Firefox.

For Chrome, download the chrome.zip file, then go to the Chrome extensions page by either:

- entering chrome://extensions in your address bar
- clicking on the Extensions icon to the right side of your address bar and clicking on Manage Extensions, or 
- opening the browser menu and going to Settings -> Extensions

From the extensions page, enable Developer Mode by ticking the checkbox in the upper-right corner.

Then drag and drop the chrome.zip file onto the web page to install it.

### From Source

* Firefox does not support this.

For Chrome, follow the steps above to enable Developer Mode and go to the Manage Extensions page.

Clone this repository, or download the latest source code zip and extract it.

Then click on the "Load Unpacked" button and select the `src` directory in the downloaded source code.

That will tell Chrome to install the content in the `src` directory as a browser extension.


## TODO

- GitHub action for compiling automatically
