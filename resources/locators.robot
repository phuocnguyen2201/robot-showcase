*** Variables ***
${url}    https://todomvc.com/examples/backbone_marionette/
${input-locator}    class:new-todo
${todo-list}    data-testid:todo-list
${todo-item}    xpath://ul[@class='todo-list']//li//label
${todo-item-checked}    xpath://ul[@class='todo-list']//li[@class='completed' or not(@class) and contains(text(),'Completed')]
${total-item}    class:todo-count
${active-items}    xpath://ul[@class='todo-list']//li//input[@class='toggle']
${completed-tab}    xpath://footer[@class='footer']//ul[@class='filters']//a[contains(text(),'Completed')]
${clear-btn}    xpath://button[@class='clear-completed' or contains(text(),'Clear completed')]
${completed-view}    xpath://ul[@class='todo-list']//li[contains(@class,'completed')]//label