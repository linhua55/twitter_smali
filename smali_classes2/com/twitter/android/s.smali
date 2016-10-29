.class public Lcom/twitter/android/s;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lckm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method

.method public static b(Landroid/database/Cursor;)I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lckm;
    .locals 7

    .prologue
    .line 18
    invoke-static {p1}, Lcom/twitter/android/s;->b(Landroid/database/Cursor;)I

    move-result v1

    .line 19
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 20
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 21
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x1

    .line 22
    :goto_0
    new-instance v0, Lckm;

    invoke-direct/range {v0 .. v6}, Lckm;-><init>(IJJZ)V

    return-object v0

    .line 21
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/s;->a(Landroid/database/Cursor;)Lckm;

    move-result-object v0

    return-object v0
.end method
