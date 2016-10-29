.class public Lcbf;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Lcbg;

.field private static final b:Lcbg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 13
    new-instance v0, Lcbg;

    const/16 v1, 0x64

    invoke-direct {v0, v2, v1}, Lcbg;-><init>(II)V

    sput-object v0, Lcbf;->a:Lcbg;

    .line 15
    new-instance v0, Lcbg;

    const/16 v1, 0x1f4

    invoke-direct {v0, v2, v1}, Lcbg;-><init>(II)V

    sput-object v0, Lcbf;->b:Lcbg;

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 22
    if-eqz p0, :cond_0

    const/16 v0, 0x11

    if-ne v0, p0, :cond_1

    .line 23
    :cond_0
    sget-object v0, Lcbf;->b:Lcbg;

    iget v0, v0, Lcbg;->b:I

    .line 25
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcbf;->a:Lcbg;

    iget v0, v0, Lcbg;->b:I

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 32
    if-eqz p0, :cond_0

    const/16 v0, 0x11

    if-ne v0, p0, :cond_1

    .line 33
    :cond_0
    sget-object v0, Lcbf;->b:Lcbg;

    iget v0, v0, Lcbg;->a:I

    .line 35
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcbf;->a:Lcbg;

    iget v0, v0, Lcbg;->a:I

    goto :goto_0
.end method
