import { Button } from "@/components/ui/button"
import { ModeToggle } from "./components/common/mode-toggle"

function App() {
  return (
    <div className="flex min-h-svh flex-col items-center justify-center gap-4">
      <Button>Click me</Button>
      <ModeToggle />
    </div>
  )
}

export default App