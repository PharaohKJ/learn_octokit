# coding: utf-8
require 'octokit'
require 'dotenv'

Dotenv.load

client = Octokit::Client.new(
  login: ENV['GITHUB_USER'],
  password: ENV['GITHUB_TOKEN']
)

repository = 'jaws-ug-kanazawa/jaws-ug-kanazawa.github.io'
eventname  = '第16回'

[
  {
    title: 'イベントの内容・日時を決める',
    body: ''
  },
  {
    title: 'doorkeeper でイベントを作成・公開する',
    body:  "- [ ] 飲み会会場を抑える \n- [ ] 勉強会場を抑える"
  },
  {
    title: 'facebook を更新する',
    body:  ''
  },
  {
    title: '公式ページを更新する',
    body:  ''
  },
  {
    title: 'JAWS-UG公式イベントカレンダーにイベントを登録する',
    body:  ''
  },
  {
    title: '定期的に集客する',
    body:  "- [ ] twitter(個人アカウントでよい) \n- [ ] facebook(公式ページのシェアなどでお願いします)"
  }
].each do |t|
  # client.create_issue('', 'title', 'body')
  p client.create_issue(
    repository,
    "#{eventname} - #{t[:title]}",
    t[:body]
  )
end
