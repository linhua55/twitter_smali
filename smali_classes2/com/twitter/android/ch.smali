.class Lcom/twitter/android/ch;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/cc;

.field final synthetic b:Lcom/twitter/library/widget/PageableListView;

.field final synthetic c:Lcom/twitter/android/dg;

.field final synthetic d:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/android/cc;Lcom/twitter/library/widget/PageableListView;Lcom/twitter/android/dg;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/twitter/android/ch;->d:Lcom/twitter/android/DMConversationFragment;

    iput-object p2, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/cc;

    iput-object p3, p0, Lcom/twitter/android/ch;->b:Lcom/twitter/library/widget/PageableListView;

    iput-object p4, p0, Lcom/twitter/android/ch;->c:Lcom/twitter/android/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lcom/twitter/android/ch;->a:Lcom/twitter/android/cc;

    iget-object v1, p0, Lcom/twitter/android/ch;->b:Lcom/twitter/library/widget/PageableListView;

    invoke-virtual {v1}, Lcom/twitter/library/widget/PageableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/cc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 883
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 884
    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->a(Landroid/database/Cursor;)Lcom/twitter/model/dms/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bd;

    .line 885
    const/16 v1, 0x304

    iget-object v2, p0, Lcom/twitter/android/ch;->c:Lcom/twitter/android/dg;

    invoke-static {v1, v0, v2}, Lcom/twitter/android/DMMessageDialog;->a(ILcom/twitter/model/dms/l;Lcom/twitter/android/dg;)Lcom/twitter/android/DMMessageDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ch;->d:Lcom/twitter/android/DMConversationFragment;

    .line 886
    invoke-virtual {v0, v1}, Lcom/twitter/android/DMMessageDialog;->a(Landroid/support/v4/app/Fragment;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ch;->d:Lcom/twitter/android/DMConversationFragment;

    .line 887
    invoke-virtual {v1}, Lcom/twitter/android/DMConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 889
    :cond_0
    return-void
.end method
