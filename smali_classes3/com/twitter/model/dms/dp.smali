.class public Lcom/twitter/model/dms/dp;
.super Lcom/twitter/model/dms/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/b",
        "<",
        "Lcom/twitter/model/dms/ds;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/dms/dv;

    invoke-direct {v0}, Lcom/twitter/model/dms/dv;-><init>()V

    sput-object v0, Lcom/twitter/model/dms/dp;->g:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/dr;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/b;-><init>(Lcom/twitter/model/dms/d;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/dr;Lcom/twitter/model/dms/dq;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/dp;-><init>(Lcom/twitter/model/dms/dr;)V

    return-void
.end method


# virtual methods
.method public c()Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/ds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/twitter/model/dms/ds;->a:Lcom/twitter/util/serialization/ah;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xa

    return v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/dms/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/model/dms/dp;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ds;

    iget-object v0, v0, Lcom/twitter/model/dms/ds;->b:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/twitter/model/dms/dp;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ds;

    iget-object v0, v0, Lcom/twitter/model/dms/ds;->d:Ljava/util/List;

    return-object v0
.end method
