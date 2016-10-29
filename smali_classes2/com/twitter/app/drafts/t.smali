.class Lcom/twitter/app/drafts/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lauf;

.field final synthetic b:Laux;

.field final synthetic c:Lcom/twitter/app/drafts/x;

.field final synthetic d:Lcom/twitter/app/drafts/p;

.field final synthetic e:Lcom/twitter/app/drafts/s;


# direct methods
.method constructor <init>(Lcom/twitter/app/drafts/s;Lauf;Laux;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/p;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/app/drafts/t;->e:Lcom/twitter/app/drafts/s;

    iput-object p2, p0, Lcom/twitter/app/drafts/t;->a:Lauf;

    iput-object p3, p0, Lcom/twitter/app/drafts/t;->b:Laux;

    iput-object p4, p0, Lcom/twitter/app/drafts/t;->c:Lcom/twitter/app/drafts/x;

    iput-object p5, p0, Lcom/twitter/app/drafts/t;->d:Lcom/twitter/app/drafts/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 62
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    .line 63
    iget-object v1, p0, Lcom/twitter/app/drafts/t;->a:Lauf;

    iget-object v2, p0, Lcom/twitter/app/drafts/t;->b:Laux;

    iget-object v3, p0, Lcom/twitter/app/drafts/t;->c:Lcom/twitter/app/drafts/x;

    iget-object v4, p0, Lcom/twitter/app/drafts/t;->d:Lcom/twitter/app/drafts/p;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/twitter/app/drafts/s;->a(Lauf;Lcom/twitter/model/drafts/d;Laux;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/p;)V

    .line 64
    return-void
.end method
