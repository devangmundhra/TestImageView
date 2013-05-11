TestImageView
=============

When using SDWebImageView in progressive download, a URL that gets fetched does not get cached, and the next time it is fetched to be displayed, it does not appear.
This is a test project to help debug the issue.
This ![image](http://files.parse.com/ec0335d6-135b-418a-a5d0-3f697be04c70/3cde3641-7af4-4da3-8de3-89e775b1af37-file)
should be visible in both view controllers, half screen in the first one and full screen in the second one.
Steps:
1. Open the project
2. The image appears in half screen.
3. Press the button to see the image in full screen.
4. Image should appear in full screen.

