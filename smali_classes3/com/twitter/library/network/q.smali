.class public Lcom/twitter/library/network/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/network/p;


# instance fields
.field private final a:Lcom/twitter/library/util/ac;


# direct methods
.method constructor <init>(Lcom/twitter/library/util/ac;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/twitter/library/network/q;->a:Lcom/twitter/library/util/ac;

    .line 199
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/library/network/q;->a:Lcom/twitter/library/util/ac;

    invoke-virtual {v0}, Lcom/twitter/library/util/ac;->a()V

    .line 210
    iget-object v0, p0, Lcom/twitter/library/network/q;->a:Lcom/twitter/library/util/ac;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/library/network/q;->a:Lcom/twitter/library/util/ac;

    invoke-virtual {v0}, Lcom/twitter/library/util/ac;->a()V

    .line 204
    iget-object v0, p0, Lcom/twitter/library/network/q;->a:Lcom/twitter/library/util/ac;

    const/16 v1, 0x1000

    invoke-static {v0, p1, v1}, Ldbt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 205
    return-void
.end method
