package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.support.v7.view.CollapsibleActionView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.ViewGroup;

/* compiled from: Twttr */
class Toolbar$ExpandedActionViewMenuPresenter implements MenuPresenter {
    MenuItemImpl mCurrentExpandedItem;
    MenuBuilder mMenu;
    final /* synthetic */ Toolbar this$0;

    private Toolbar$ExpandedActionViewMenuPresenter(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        if (!(this.mMenu == null || this.mCurrentExpandedItem == null)) {
            this.mMenu.collapseItemActionView(this.mCurrentExpandedItem);
        }
        this.mMenu = menuBuilder;
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        return null;
    }

    public void updateMenuView(boolean z) {
        Object obj = null;
        if (this.mCurrentExpandedItem != null) {
            if (this.mMenu != null) {
                int size = this.mMenu.size();
                for (int i = 0; i < size; i++) {
                    if (this.mMenu.getItem(i) == this.mCurrentExpandedItem) {
                        obj = 1;
                        break;
                    }
                }
            }
            if (obj == null) {
                collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
            }
        }
    }

    public void setCallback(Callback callback) {
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    public boolean flagActionItems() {
        return false;
    }

    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        Toolbar.access$200(this.this$0);
        if (Toolbar.access$300(this.this$0).getParent() != this.this$0) {
            this.this$0.addView(Toolbar.access$300(this.this$0));
        }
        this.this$0.mExpandedActionView = menuItemImpl.getActionView();
        this.mCurrentExpandedItem = menuItemImpl;
        if (this.this$0.mExpandedActionView.getParent() != this.this$0) {
            Toolbar$LayoutParams generateDefaultLayoutParams = this.this$0.generateDefaultLayoutParams();
            generateDefaultLayoutParams.gravity = 8388611 | (Toolbar.access$400(this.this$0) & 112);
            generateDefaultLayoutParams.mViewType = 2;
            this.this$0.mExpandedActionView.setLayoutParams(generateDefaultLayoutParams);
            this.this$0.addView(this.this$0.mExpandedActionView);
        }
        this.this$0.removeChildrenForExpandedActionView();
        this.this$0.requestLayout();
        menuItemImpl.setActionViewExpanded(true);
        if (this.this$0.mExpandedActionView instanceof CollapsibleActionView) {
            ((CollapsibleActionView) this.this$0.mExpandedActionView).onActionViewExpanded();
        }
        return true;
    }

    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        if (this.this$0.mExpandedActionView instanceof CollapsibleActionView) {
            ((CollapsibleActionView) this.this$0.mExpandedActionView).onActionViewCollapsed();
        }
        this.this$0.removeView(this.this$0.mExpandedActionView);
        this.this$0.removeView(Toolbar.access$300(this.this$0));
        this.this$0.mExpandedActionView = null;
        this.this$0.addChildrenForExpandedActionView();
        this.mCurrentExpandedItem = null;
        this.this$0.requestLayout();
        menuItemImpl.setActionViewExpanded(false);
        return true;
    }

    public int getId() {
        return 0;
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }
}
