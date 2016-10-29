.class Lcom/twitter/library/client/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/aw;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/AbsFragment;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/AbsFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/twitter/library/client/a;->a:Lcom/twitter/library/client/AbsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/ba;)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/library/client/a;->a:Lcom/twitter/library/client/AbsFragment;

    iget-wide v0, v0, Lcom/twitter/library/client/AbsFragment;->aa:J

    iget-wide v2, p1, Lcom/twitter/library/client/ba;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/twitter/library/client/a;->a:Lcom/twitter/library/client/AbsFragment;

    iget-object v1, p1, Lcom/twitter/library/client/ba;->e:Lcom/twitter/library/service/x;

    iget v2, p1, Lcom/twitter/library/client/ba;->b:I

    iget v3, p1, Lcom/twitter/library/client/ba;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/client/AbsFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 46
    :cond_0
    return-void
.end method
