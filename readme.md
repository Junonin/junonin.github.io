### 重新部署恢复 Hexo
```
npm install hexo-cli -g
```
* 保留_config.yml，theme/，source/，scaffolds/，package.json，.gitignore，gulpfile.js 这些项目在目录下Git bash
```
npm install
npm install hexo-deployer-git --save
hexo clean && hexo g && hexo s
```
查看是否本地可以运行[Hexo](http://localhost:4000/)
发布
```
hexo d
```
