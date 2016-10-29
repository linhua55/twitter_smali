.class public Lcom/twitter/model/geo/TwitterPlace;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/model/geo/TwitterPlace;",
            "Lcom/twitter/model/geo/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/twitter/model/geo/VendorInfo;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/twitter/model/geo/a;

.field public final h:Lcom/twitter/model/geo/d;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/twitter/model/geo/TwitterPlace;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/model/geo/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/geo/l;-><init>(Lcom/twitter/model/geo/j;)V

    sput-object v0, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/geo/k;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Lcom/twitter/model/geo/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/twitter/model/geo/k;->b:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->c:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    .line 61
    iget-object v0, p1, Lcom/twitter/model/geo/k;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/twitter/model/geo/k;->d:Lcom/twitter/model/geo/VendorInfo;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->e:Lcom/twitter/model/geo/VendorInfo;

    .line 63
    iget-object v0, p1, Lcom/twitter/model/geo/k;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->f:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/twitter/model/geo/k;->f:Lcom/twitter/model/geo/a;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->g:Lcom/twitter/model/geo/a;

    .line 65
    iget-object v0, p1, Lcom/twitter/model/geo/k;->g:Lcom/twitter/model/geo/d;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->h:Lcom/twitter/model/geo/d;

    .line 66
    iget-object v0, p1, Lcom/twitter/model/geo/k;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->i:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/twitter/model/geo/k;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->j:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/twitter/model/geo/k;->j:Lcom/twitter/model/geo/TwitterPlace;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->k:Lcom/twitter/model/geo/TwitterPlace;

    .line 69
    iget-object v0, p1, Lcom/twitter/model/geo/k;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->l:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/twitter/model/geo/k;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->m:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/geo/k;Lcom/twitter/model/geo/j;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/twitter/model/geo/TwitterPlace;-><init>(Lcom/twitter/model/geo/k;)V

    return-void
.end method

.method public static a([B)Lcom/twitter/model/geo/TwitterPlace;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    return-object v0
.end method

.method public static a(Lcom/twitter/model/geo/TwitterPlace;)[B
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 75
    if-ne p0, p1, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 78
    :cond_0
    instance-of v0, p1, Lcom/twitter/model/geo/TwitterPlace;

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_1
    check-cast p1, Lcom/twitter/model/geo/TwitterPlace;

    .line 83
    iget-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TwitterPlace { id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fullname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
