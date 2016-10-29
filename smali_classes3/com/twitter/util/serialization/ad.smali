.class public Lcom/twitter/util/serialization/ad;
.super Lcom/twitter/util/serialization/ak;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/ak",
        "<",
        "Lcom/twitter/util/serialization/ad;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/ObjectOutput;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/io/ObjectOutput;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/twitter/util/serialization/ad;-><init>(Ljava/io/ObjectOutput;Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/ObjectOutput;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/util/serialization/ak;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    .line 19
    iput-boolean p2, p0, Lcom/twitter/util/serialization/ad;->b:Z

    .line 20
    return-void
.end method


# virtual methods
.method public a(B)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 26
    return-object p0
.end method

.method public a(D)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 61
    return-object p0
.end method

.method public a(F)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 54
    return-object p0
.end method

.method public a(I)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 40
    return-object p0
.end method

.method public a(ILjava/lang/String;)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->b(I)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 47
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ad;->a(B)Lcom/twitter/util/serialization/ad;

    .line 73
    :goto_0
    return-object p0

    .line 70
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ad;->a(B)Lcom/twitter/util/serialization/ad;

    .line 71
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 33
    return-object p0
.end method

.method public a([B)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ad;->a(B)Lcom/twitter/util/serialization/ad;

    .line 86
    :goto_0
    return-object p0

    .line 82
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ad;->a(B)Lcom/twitter/util/serialization/ad;

    .line 83
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/twitter/util/serialization/ad;->a(I)Lcom/twitter/util/serialization/ad;

    .line 84
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->write([B)V

    goto :goto_0
.end method

.method public b()Lcom/twitter/util/serialization/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/util/serialization/ad;->a:Ljava/io/ObjectOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 93
    return-object p0
.end method

.method public b(I)Lcom/twitter/util/serialization/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/twitter/util/serialization/ad;->b:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->a(I)Lcom/twitter/util/serialization/ad;

    .line 102
    :cond_0
    return-object p0
.end method

.method public synthetic b(B)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->a(B)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(D)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/serialization/ad;->a(D)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(F)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->a(F)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(ILjava/lang/String;)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/serialization/ad;->a(ILjava/lang/String;)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(J)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/serialization/ad;->a(J)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->a(Ljava/lang/String;)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->a(Z)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->a([B)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/twitter/util/serialization/ad;
    .locals 0

    .prologue
    .line 114
    return-object p0
.end method

.method public synthetic d(I)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->b(I)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(I)Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/twitter/util/serialization/ad;->a(I)Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/util/serialization/ad;->c()Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/twitter/util/serialization/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/util/serialization/ad;->b()Lcom/twitter/util/serialization/ad;

    move-result-object v0

    return-object v0
.end method
