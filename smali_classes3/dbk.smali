.class Ldbk;
.super Ljava/io/FilterOutputStream;
.source "Twttr"


# instance fields
.field final synthetic a:Ldbj;


# direct methods
.method private constructor <init>(Ldbj;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Ldbk;->a:Ldbj;

    .line 767
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 768
    return-void
.end method

.method synthetic constructor <init>(Ldbj;Ljava/io/OutputStream;Ldbi;)V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Ldbk;-><init>(Ldbj;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    :try_start_0
    iget-object v0, p0, Ldbk;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    iget-object v1, p0, Ldbk;->a:Ldbj;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ldbj;->a(Ldbj;Z)Z

    .line 796
    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    :try_start_0
    iget-object v0, p0, Ldbk;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    iget-object v1, p0, Ldbk;->a:Ldbj;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ldbj;->a(Ldbj;Z)Z

    .line 806
    throw v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    :try_start_0
    iget-object v0, p0, Ldbk;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    iget-object v1, p0, Ldbk;->a:Ldbj;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ldbj;->a(Ldbj;Z)Z

    .line 776
    throw v0
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    :try_start_0
    iget-object v0, p0, Ldbk;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    iget-object v1, p0, Ldbk;->a:Ldbj;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ldbj;->a(Ldbj;Z)Z

    .line 786
    throw v0
.end method
