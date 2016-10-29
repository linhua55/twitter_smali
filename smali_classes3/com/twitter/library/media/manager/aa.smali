.class Lcom/twitter/library/media/manager/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/internal/network/i;


# instance fields
.field final synthetic a:Ldbd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/library/media/manager/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/media/manager/v;Ldbd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/twitter/library/media/manager/aa;->c:Lcom/twitter/library/media/manager/v;

    iput-object p2, p0, Lcom/twitter/library/media/manager/aa;->a:Ldbd;

    iput-object p3, p0, Lcom/twitter/library/media/manager/aa;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/io/InputStream;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/twitter/library/media/manager/aa;->a:Ldbd;

    iget-object v1, p0, Lcom/twitter/library/media/manager/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ldbd;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    .line 626
    return-void
.end method

.method public a(Lcom/twitter/internal/network/k;)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method
