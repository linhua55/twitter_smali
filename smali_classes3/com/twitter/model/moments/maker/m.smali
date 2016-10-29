.class public Lcom/twitter/model/moments/maker/m;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcom/twitter/model/moments/maker/MomentEditOperation;",
        "Lcom/twitter/model/moments/maker/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/maker/l;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/twitter/model/moments/maker/l;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/l;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/twitter/model/moments/maker/l;->a(Ljava/lang/String;)Lcom/twitter/model/moments/maker/l;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/l;->b(Ljava/lang/String;)Lcom/twitter/model/moments/maker/l;

    move-result-object v1

    sget-object v0, Lcom/twitter/util/serialization/i;->b:Lcom/twitter/util/serialization/ah;

    .line 99
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/l;->a(Ljava/lang/Boolean;)Lcom/twitter/model/moments/maker/l;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/moments/maker/n;->a:Lcom/twitter/model/moments/maker/p;

    .line 100
    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/n;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/l;->a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/moments/maker/l;

    move-result-object v1

    const-class v0, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 101
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/l;->a(Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;)Lcom/twitter/model/moments/maker/l;

    .line 102
    return-void
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
    .line 87
    check-cast p2, Lcom/twitter/model/moments/maker/l;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/moments/maker/m;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/model/moments/maker/l;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/MomentEditOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p2, Lcom/twitter/model/moments/maker/MomentEditOperation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/MomentEditOperation;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/MomentEditOperation;->c:Ljava/lang/Boolean;

    sget-object v2, Lcom/twitter/util/serialization/i;->b:Lcom/twitter/util/serialization/ah;

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/MomentEditOperation;->d:Lcom/twitter/model/moments/maker/n;

    sget-object v2, Lcom/twitter/model/moments/maker/n;->a:Lcom/twitter/model/moments/maker/p;

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    move-result-object v0

    iget-object v1, p2, Lcom/twitter/model/moments/maker/MomentEditOperation;->e:Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    const-class v2, Lcom/twitter/model/moments/maker/MomentEditOperation$Visibility;

    .line 111
    invoke-static {v2}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 112
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
    .line 87
    check-cast p2, Lcom/twitter/model/moments/maker/MomentEditOperation;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/moments/maker/m;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/model/moments/maker/MomentEditOperation;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/m;->a()Lcom/twitter/model/moments/maker/l;

    move-result-object v0

    return-object v0
.end method
