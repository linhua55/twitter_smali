.class Lcom/twitter/model/dms/do;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/dms/Participant;",
        "Lcom/twitter/model/dms/dn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/util/serialization/d;-><init>(I)V

    .line 106
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/dms/dn;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/twitter/model/dms/dn;

    invoke-direct {v0}, Lcom/twitter/model/dms/dn;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/dn;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/dms/dn;->a(J)Lcom/twitter/model/dms/dm;

    .line 121
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/dms/dn;->b(J)Lcom/twitter/model/dms/dm;

    .line 124
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/dms/dn;->c(J)Lcom/twitter/model/dms/dm;
    :try_end_0
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->f()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/twitter/model/dms/dn;->d(J)Lcom/twitter/model/dms/dm;

    .line 130
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
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
    .line 101
    check-cast p2, Lcom/twitter/model/dms/dn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/dms/do;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/dms/dn;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/Participant;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-wide v0, p2, Lcom/twitter/model/dms/Participant;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/dms/Participant;->c:J

    .line 112
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/dms/Participant;->d:J

    .line 113
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-wide v2, p2, Lcom/twitter/model/dms/Participant;->e:J

    .line 114
    invoke-virtual {v0, v2, v3}, Lcom/twitter/util/serialization/ak;->b(J)Lcom/twitter/util/serialization/ak;

    .line 115
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
    .line 101
    check-cast p2, Lcom/twitter/model/dms/Participant;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/do;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/dms/Participant;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/twitter/model/dms/do;->a()Lcom/twitter/model/dms/dn;

    move-result-object v0

    return-object v0
.end method
