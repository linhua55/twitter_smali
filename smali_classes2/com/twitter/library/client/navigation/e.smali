.class Lcom/twitter/library/client/navigation/e;
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
    .line 27
    iput-object p1, p0, Lcom/twitter/library/client/navigation/e;->b:Lcom/twitter/library/client/navigation/d;

    iput-object p2, p0, Lcom/twitter/library/client/navigation/e;->a:Lcyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/library/client/navigation/e;->a:Lcyz;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/twitter/library/client/navigation/e;->b:Lcom/twitter/library/client/navigation/d;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/d;->a(Lcom/twitter/library/client/navigation/d;)Lcyw;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/library/client/navigation/e;->a:Lcyz;

    invoke-interface {v1}, Lcyz;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcyw;->a(Z)V

    .line 34
    :cond_0
    return-void
.end method
