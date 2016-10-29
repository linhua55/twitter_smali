.class Lcom/twitter/library/client/bc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:J

.field final synthetic c:Lcom/twitter/library/client/bb;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/bb;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 19
    iput-object p1, p0, Lcom/twitter/library/client/bc;->c:Lcom/twitter/library/client/bb;

    iput-object p2, p0, Lcom/twitter/library/client/bc;->a:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/twitter/library/client/bc;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/library/client/bc;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 23
    iget-object v0, p0, Lcom/twitter/library/client/bc;->c:Lcom/twitter/library/client/bb;

    iget-wide v2, p0, Lcom/twitter/library/client/bc;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bb;->b(J)V

    .line 24
    return-void
.end method
