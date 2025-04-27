import Greeting from './components/Greeting.vue'
import SidebarNavigation from './admin/navigation/SidebarNavigation.vue'

const components = {
  'Greeting': Greeting,
  'SidebarNavigation': SidebarNavigation,
}

export function getComponent(name) {
  return components[name]
}