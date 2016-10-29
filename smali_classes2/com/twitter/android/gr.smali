.class public Lcom/twitter/android/gr;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lckz;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/twitter/android/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 28
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/gr;->a:Lcom/twitter/util/serialization/ah;

    .line 29
    sget-object v0, Lcom/twitter/model/core/t;->a:Lcom/twitter/util/serialization/ah;

    .line 30
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/gr;->b:Lcom/twitter/util/serialization/ah;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/s;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcmv;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/android/gr;->c:Lcom/twitter/android/s;

    .line 36
    return-void
.end method

.method private static a(Landroid/database/Cursor;II)Lckt;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lckv;

    invoke-direct {v0}, Lckv;-><init>()V

    .line 76
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lckv;->a(Ljava/lang/String;)Lckv;

    move-result-object v1

    .line 78
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v2, Lcom/twitter/android/gr;->b:Lcom/twitter/util/serialization/ah;

    .line 77
    invoke-static {v0, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lckv;->a(Ljava/util/List;)Lckv;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lckv;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckt;

    .line 75
    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/gr;->b(Landroid/database/Cursor;)Lckz;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {p1}, Lcom/twitter/android/s;->b(Landroid/database/Cursor;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lckz;
    .locals 6

    .prologue
    .line 46
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/h;

    .line 47
    iget-object v1, p0, Lcom/twitter/android/gr;->c:Lcom/twitter/android/s;

    invoke-virtual {v1, p1}, Lcom/twitter/android/s;->a(Landroid/database/Cursor;)Lckm;

    move-result-object v2

    .line 49
    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 50
    new-instance v1, Lcky;

    invoke-direct {v1}, Lcky;-><init>()V

    const/16 v4, 0x15

    const/16 v5, 0x16

    .line 51
    invoke-static {p1, v4, v5}, Lcom/twitter/android/gr;->a(Landroid/database/Cursor;II)Lckt;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcky;->a(Lckt;)Lcky;

    move-result-object v1

    const/16 v4, 0x20

    const/16 v5, 0x21

    .line 53
    invoke-static {p1, v4, v5}, Lcom/twitter/android/gr;->a(Landroid/database/Cursor;II)Lckt;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcky;->b(Lckt;)Lcky;

    move-result-object v1

    const/16 v4, 0x14

    .line 55
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcky;->a(Ljava/lang/String;)Lcky;

    move-result-object v1

    const/16 v4, 0x17

    .line 56
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcky;->b(Ljava/lang/String;)Lcky;

    move-result-object v4

    const/16 v1, 0x19

    .line 57
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v5, Lcom/twitter/android/gr;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v5}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/twitter/android/h;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcky;->a(Ljava/util/List;)Lcky;

    move-result-object v4

    const/16 v1, 0x1b

    .line 59
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v5, Lcom/twitter/android/gr;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v5}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/twitter/android/h;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcky;->c(Ljava/util/List;)Lcky;

    move-result-object v4

    const/16 v1, 0x1a

    .line 61
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v5, Lcom/twitter/android/gr;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v5}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/twitter/android/h;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcky;->b(Ljava/util/List;)Lcky;

    move-result-object v0

    const/16 v1, 0x1c

    .line 63
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcky;->a(J)Lcky;

    move-result-object v0

    iget-wide v4, v2, Lckm;->b:J

    .line 64
    invoke-virtual {v0, v4, v5}, Lcky;->b(J)Lcky;

    move-result-object v0

    iget-wide v4, v2, Lckm;->c:J

    .line 65
    invoke-virtual {v0, v4, v5}, Lcky;->c(J)Lcky;

    move-result-object v0

    const/16 v1, 0x1d

    .line 66
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcky;->d(Ljava/lang/String;)Lcky;

    move-result-object v0

    const/16 v1, 0x1e

    .line 67
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcky;->c(Ljava/lang/String;)Lcky;

    move-result-object v0

    new-instance v1, Lclc;

    invoke-direct {v1, v3}, Lclc;-><init>(I)V

    .line 68
    invoke-virtual {v0, v1}, Lcky;->a(Lclc;)Lcky;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcky;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckx;

    .line 70
    new-instance v1, Lckz;

    invoke-direct {v1, v2, v0}, Lckz;-><init>(Lckm;Lckx;)V

    return-object v1
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/gr;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method
