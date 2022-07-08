# turbo_bootstrap_issue
Having an issue with turbo and bootstrap 5 compatibility. Note bootstrap 5 does NOT use jquery, unlike its predecesors.

## Description of issue

If I scroll down quite a bit, and then I enter another page through a link, I start at the same scroll position on that page. In my example I have an index of posts, and if I:
1. refresh the main index page
2. scroll down past #60
3. click a post-page

The scroll position on that post-page is not at the top of the page.

## Expected Behavior

![expected behavior](https://github.com/LukeClancy/turbo_bootstrap_issue/blob/main/docs/g_1.gif)

## Actual Behavior

![actual behavior](https://github.com/LukeClancy/turbo_bootstrap_issue/blob/main/docs/g_2.gif)

## Tracking the issue

I have found that commenting out the bootstrap scss in ![app/assets/stylesheets/application.scss](https://github.com/LukeClancy/turbo_bootstrap_issue/blob/main/app/assets/stylesheets/application.scss) will solve the issue, while also disabling all bootstrap functionality (except perhaps some bootstrap javascript). It is notable that disabling bootstrap javascript does not have the same effect. For these reasons I beleive it is a css issue.

## Versions

1. testing on updated firefox version ('firefox -v' outputted 102.0)
2. yarn: bootstrap 5.1.3
3. gemfile: bootstrap 5.1.3
4. turbo-rails 1.1.1
5. rails 7 (is an issue on rails 6 aswell)
