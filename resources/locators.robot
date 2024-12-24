*** Variables ***
${url}    https://todomvc.com/examples/backbone_marionette/
${input-locator}    class:new-todo
${todo-list}    data-testid:todo-list
${todo-item}    xpath://ul[@class='todo-list']//li//label
${todo-item-checked}    xpath://ul[@class='todo-list']//li[@class='completed']
${total-item}    class:todo-count
${active-items}    xpath://li[@class='active']//input[@class='toggle']
${completed-tab}    xpath://footer[@class='footer']//ul[@class='filters']//a[text()='Completed']