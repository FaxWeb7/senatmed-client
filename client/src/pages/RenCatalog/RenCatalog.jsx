import ItemBg from "../../components/ItemBg/ItemBg"
import RenCatalogList from "./RenCatalogList"
import { MainList } from "../MainList"

const RenCatalog = () => {
  document.title = 'Рентгенология | Сенатмед'
  return (
    <>
      <ItemBg title="Выберите бренд" />
      <div className="catalog">
        <div className="container">
          <div className="catalog__inner">
            <RenCatalogList list={MainList} />
          </div>
        </div>
      </div>
    </>
  )
}

export default RenCatalog