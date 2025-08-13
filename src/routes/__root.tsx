import { createRootRoute, Link, Outlet } from '@tanstack/react-router'
import { TanStackRouterDevtools } from '@tanstack/react-router-devtools'

import LanguageSwitch from '@/components/common/language-switch'
import { ModeToggle } from '../components/common/mode-toggle'

export const Route = createRootRoute({
  component: () => (
    <>
      <div className='p-2 flex items-center justify-between border-b'>
        <div className='flex gap-2'>
          <Link to='/' className='[&.active]:font-bold'>
            Home
          </Link>
          <Link to='/about' className='[&.active]:font-bold'>
            About
          </Link>
        </div>
        <div className='flex items-center gap-2'>
          <ModeToggle />
          <LanguageSwitch />
        </div>
      </div>
      <Outlet />
      <TanStackRouterDevtools />
    </>
  ),
})
