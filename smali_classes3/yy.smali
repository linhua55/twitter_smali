.class Lyy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lyw;


# direct methods
.method constructor <init>(Lyw;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lyy;->a:Lyw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lyy;->a:Lyw;

    iget-object v1, v0, Lyw;->n:Lcom/twitter/library/view/m;

    iget-object v0, p0, Lyy;->a:Lyw;

    iget-object v0, v0, Lyw;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->f()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/twitter/library/view/m;->b(J)V

    .line 141
    return-void
.end method
