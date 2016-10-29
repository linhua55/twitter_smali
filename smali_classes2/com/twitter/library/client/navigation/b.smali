.class Lcom/twitter/library/client/navigation/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/navigation/a;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/navigation/a;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/library/client/navigation/b;->a:Lcom/twitter/library/client/navigation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/library/client/navigation/b;->a:Lcom/twitter/library/client/navigation/a;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/a;->a(Lcom/twitter/library/client/navigation/a;)Lcyz;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lbjw;->drawer_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/model/account/UserAccount;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/twitter/library/client/navigation/b;->a:Lcom/twitter/library/client/navigation/a;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/a;->a(Lcom/twitter/library/client/navigation/a;)Lcyz;

    move-result-object v1

    sget v0, Lbjw;->drawer_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    invoke-interface {v1, v0}, Lcyz;->a(Lcom/twitter/model/account/UserAccount;)V

    .line 103
    :cond_0
    return-void
.end method
