.class public Lcom/twitter/library/client/navigation/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcyy;


# instance fields
.field private final a:Landroid/widget/ListView;

.field private final b:Lcom/twitter/library/client/navigation/a;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/twitter/library/client/navigation/a;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/twitter/library/client/navigation/j;->b:Lcom/twitter/library/client/navigation/a;

    .line 21
    iput-object p1, p0, Lcom/twitter/library/client/navigation/j;->a:Landroid/widget/ListView;

    .line 22
    iget-object v0, p0, Lcom/twitter/library/client/navigation/j;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/library/client/navigation/j;->b:Lcom/twitter/library/client/navigation/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/library/client/navigation/j;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public a(Lcmo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmo",
            "<",
            "Lcyr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/client/navigation/j;->b:Lcom/twitter/library/client/navigation/a;

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/navigation/a;->a(Lcmf;)Lcmf;

    .line 34
    return-void
.end method

.method public a(Lcyz;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/library/client/navigation/j;->b:Lcom/twitter/library/client/navigation/a;

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/navigation/a;->a(Lcyz;)V

    .line 39
    return-void
.end method
