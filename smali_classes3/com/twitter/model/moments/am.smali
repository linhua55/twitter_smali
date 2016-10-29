.class public Lcom/twitter/model/moments/am;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/ak;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Long;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/Long;

.field e:Lcom/twitter/model/moments/MomentPageDisplayMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 113
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    iput-object v0, p0, Lcom/twitter/model/moments/am;->e:Lcom/twitter/model/moments/MomentPageDisplayMode;

    return-void
.end method

.method public static a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/am;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/twitter/model/moments/am;

    invoke-direct {v0}, Lcom/twitter/model/moments/am;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/moments/ak;->d:Ljava/lang/Long;

    .line 126
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->a(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ak;->b:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->a(Ljava/lang/String;)Lcom/twitter/model/moments/am;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ak;->e:Ljava/lang/Long;

    .line 128
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->b(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ak;->f:Ljava/lang/Long;

    .line 129
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->c(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ak;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 130
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/am;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public static a(Lcqt;)Lcom/twitter/model/moments/am;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lcom/twitter/model/moments/am;

    invoke-direct {v0}, Lcom/twitter/model/moments/am;-><init>()V

    iget-object v1, p0, Lcqt;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->a(Ljava/lang/String;)Lcom/twitter/model/moments/am;

    move-result-object v0

    iget-wide v2, p0, Lcqt;->j:J

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->b(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v1

    iget-object v0, p0, Lcqt;->g:Lcqn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcqt;->g:Lcqn;

    iget-wide v2, v0, Lcqn;->b:J

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/am;->c(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v0

    .line 117
    return-object v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/am;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/twitter/model/moments/am;->e:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 160
    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/twitter/model/moments/am;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/twitter/model/moments/am;->a:Ljava/lang/Long;

    .line 136
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/moments/am;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/twitter/model/moments/am;->b:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public b(Ljava/lang/Long;)Lcom/twitter/model/moments/am;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/twitter/model/moments/am;->c:Ljava/lang/Long;

    .line 148
    return-object p0
.end method

.method public c(Ljava/lang/Long;)Lcom/twitter/model/moments/am;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/twitter/model/moments/am;->d:Ljava/lang/Long;

    .line 154
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/twitter/model/moments/am;->e()Lcom/twitter/model/moments/ak;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/ak;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lcom/twitter/model/moments/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/moments/ak;-><init>(Lcom/twitter/model/moments/am;Lcom/twitter/model/moments/al;)V

    return-object v0
.end method
