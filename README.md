# Keep Teams Awake

Keep Teams Awake is a very simple, barebones "mouse jiggler" browser extension for Microsoft Teams.

It works on Firefox and Chrome-based browsers.

### The problem

The web version of Microsoft Teams can't (and shouldn't!) track mouse or keyboard behavior unless it has focus.

This means that if you have a different browser tab/window open, or you are using a different program on your computer, then Teams will not be in focus, and it will not see any of your mouse or keyboard interactions.

This is good for privacy and security reasons, but it does present a problem: Teams will assume that you aren't using your computer.

Teams will then automatically set your status to "Away", making other people think that you aren't at your computer, and will also result in Teams not checking for new messages as regularly as it should.

This problem has become more apparent as Microsoft has shifted away from native desktop apps for some platforms (eg. Linux) and replaced the native apps with web versions, leaving those users with broken "Away" functionality.

### The solution

This browser extension sends fake mouse movement events to the Teams website at regular intervals to ensure that Teams remains active.

These aren't real mouse movement events. So your mouse won't move, but the website will think that it did.

Also, since they aren't real mouse movement events, it will work even if Teams isn't in the active browser tab, if it's on a different workspace/virtual desktop, and so on.

