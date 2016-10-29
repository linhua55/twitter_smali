.class Lcom/twitter/library/client/navigation/c;
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
    .line 107
    iput-object p1, p0, Lcom/twitter/library/client/navigation/c;->a:Lcom/twitter/library/client/navigation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/library/client/navigation/c;->a:Lcom/twitter/library/client/navigation/a;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/a;->a(Lcom/twitter/library/client/navigation/a;)Lcyz;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lbjw;->drawer_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcym;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/twitter/library/client/navigation/c;->a:Lcom/twitter/library/client/navigation/a;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/a;->a(Lcom/twitter/library/client/navigation/a;)Lcyz;

    move-result-object v1

    sget v0, Lbjw;->drawer_item_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcym;

    invoke-interface {v1, v0}, Lcyz;->a(Lcym;)V

    .line 114
    :cond_0
    return-void
.end method
