.class public final Lcrs;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcrp;",
        "Lcrr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcrr;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    check-cast p2, Lcrr;

    invoke-virtual {p0, p1, p2, p3}, Lcrs;->a(Lcom/twitter/util/serialization/aj;Lcrr;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcrr;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    .line 115
    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcrp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget v0, p2, Lcrp;->g:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcrp;->h:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 122
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    check-cast p2, Lcrp;

    invoke-virtual {p0, p1, p2}, Lcrs;->a(Lcom/twitter/util/serialization/ak;Lcrp;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcrs;->a()Lcrr;

    move-result-object v0

    return-object v0
.end method
