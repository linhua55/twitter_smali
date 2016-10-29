.class public Lcom/twitter/model/geo/g;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/geo/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/twitter/model/geo/TwitterPlace;

.field private final c:Lcom/twitter/model/geo/d;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/model/geo/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/geo/i;-><init>(Lcom/twitter/model/geo/h;)V

    sput-object v0, Lcom/twitter/model/geo/g;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/geo/d;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create geotag with null place"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/twitter/model/geo/g;->b:Lcom/twitter/model/geo/TwitterPlace;

    .line 34
    iput-object p2, p0, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    .line 35
    iput-object p3, p0, Lcom/twitter/model/geo/g;->d:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/geo/TwitterPlace;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/model/geo/g;->b:Lcom/twitter/model/geo/TwitterPlace;

    return-object v0
.end method

.method public b()Lcom/twitter/model/geo/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/model/geo/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 69
    goto :goto_0

    .line 72
    :cond_3
    check-cast p1, Lcom/twitter/model/geo/g;

    .line 73
    iget-object v2, p0, Lcom/twitter/model/geo/g;->b:Lcom/twitter/model/geo/TwitterPlace;

    iget-object v3, p1, Lcom/twitter/model/geo/g;->b:Lcom/twitter/model/geo/TwitterPlace;

    invoke-virtual {v2, v3}, Lcom/twitter/model/geo/TwitterPlace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/twitter/model/geo/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/model/geo/g;->d:Ljava/lang/String;

    .line 74
    invoke-static {v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    iget-object v3, p1, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    .line 76
    invoke-virtual {v2, v3}, Lcom/twitter/model/geo/d;->b(Lcom/twitter/model/geo/d;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/twitter/model/geo/g;->b:Lcom/twitter/model/geo/TwitterPlace;

    invoke-virtual {v0}, Lcom/twitter/model/geo/TwitterPlace;->hashCode()I

    move-result v0

    .line 82
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/geo/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/geo/g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 84
    return v0

    :cond_1
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GeoTag{place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/geo/g;->b:Lcom/twitter/model/geo/TwitterPlace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", coordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/geo/g;->c:Lcom/twitter/model/geo/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", searchId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/geo/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
