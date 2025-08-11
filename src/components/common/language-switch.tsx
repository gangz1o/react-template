import { useTranslation } from 'react-i18next'
import i18n from '@/i18n'
import { Button } from '../ui/button'
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from '../ui/dropdown-menu'
import { ChevronDownIcon, LanguagesIcon } from 'lucide-react'

const LanguageSwitch = () => {
  const { t } = useTranslation()

  const handleLanguageChange = (language: string) => {
    i18n.changeLanguage(language)
  }

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant='outline' className='flex items-center gap-2'>
          <LanguagesIcon className='w-4 h-4' />
        </Button>
      </DropdownMenuTrigger>
      <DropdownMenuContent>
        <DropdownMenuItem onClick={() => handleLanguageChange('zh-CN')}>中文</DropdownMenuItem>
        <DropdownMenuItem onClick={() => handleLanguageChange('en-US')}>English</DropdownMenuItem>
      </DropdownMenuContent>
    </DropdownMenu>
  )
}

export default LanguageSwitch