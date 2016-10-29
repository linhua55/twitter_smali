.class Lcom/twitter/android/cp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;Ljava/util/List;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/DMConversationFragment;

    iput-object p2, p0, Lcom/twitter/android/cp;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/twitter/android/cp;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/twitter/android/cp;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1615
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->B(Lcom/twitter/android/DMConversationFragment;)V

    .line 1640
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1618
    iget-object v0, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->C(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/media/selection/MediaAttachmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/media/selection/MediaAttachmentController;->c()V

    goto :goto_0

    .line 1619
    :cond_2
    if-nez v0, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/DMConversationFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DMConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->D(Lcom/twitter/android/DMConversationFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/DMConversationFragment;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1621
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1622
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/16 v1, 0x30c

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a02b0

    .line 1623
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a02b1

    .line 1624
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a00fd

    .line 1625
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 1626
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cq;

    invoke-direct {v1, p0}, Lcom/twitter/android/cq;-><init>(Lcom/twitter/android/cp;)V

    .line 1627
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cp;->b:Landroid/support/v4/app/FragmentActivity;

    .line 1638
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method
