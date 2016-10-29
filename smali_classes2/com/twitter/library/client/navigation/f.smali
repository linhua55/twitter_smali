.class Lcom/twitter/library/client/navigation/f;
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
    .line 37
    iput-object p1, p0, Lcom/twitter/library/client/navigation/f;->b:Lcom/twitter/library/client/navigation/d;

    iput-object p2, p0, Lcom/twitter/library/client/navigation/f;->a:Lcyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/library/client/navigation/f;->a:Lcyz;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/twitter/library/client/navigation/f;->a:Lcyz;

    invoke-interface {v0}, Lcyz;->d()V

    .line 43
    :cond_0
    return-void
.end method
