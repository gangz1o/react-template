import { createFileRoute } from '@tanstack/react-router'
import { useTranslation } from 'react-i18next'

export const Route = createFileRoute('/')({
  component: Index,
})

function Index() {
  const { t } = useTranslation()

  return (
    <div className='p-4 flex flex-col gap-4'>
      <div>{t("title")}</div>
      <p>{t("common.confirm")}</p>
      <p>{t("common.cancel")}</p>
    </div>
  )
}