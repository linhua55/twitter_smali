.class Lcom/twitter/library/client/navigation/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcyz;

.field final synthetic b:Lcom/twitter/library/client/navigation/d;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/navigation/d;Lcyz;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/library/client/navigation/g;->b:Lcom/twitter/library/client/navigation/d;

    iput-object p2, p0, Lcom/twitter/library/client/navigation/g;->a:Lcyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/twitter/library/client/navigation/g;->a:Lcyz;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/twitter/library/client/navigation/g;->a:Lcyz;

    invoke-interface {v1, v0}, Lcyz;->a(Lcom/twitter/model/account/UserAccount;)V

    .line 55
    :cond_0
    return-void
.end method
