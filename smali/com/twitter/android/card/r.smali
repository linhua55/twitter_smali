.class public Lcom/twitter/android/card/r;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static a:Lcom/twitter/android/card/r;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lcom/twitter/android/card/r;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/twitter/android/card/r;->a:Lcom/twitter/android/card/r;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/twitter/android/card/r;

    invoke-direct {v0}, Lcom/twitter/android/card/r;-><init>()V

    sput-object v0, Lcom/twitter/android/card/r;->a:Lcom/twitter/android/card/r;

    .line 20
    :cond_0
    sget-object v0, Lcom/twitter/android/card/r;->a:Lcom/twitter/android/card/r;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/android/card/o;Lclw;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)Lcom/twitter/android/card/p;
    .locals 6

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/android/card/CardPreviewControllerImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/card/CardPreviewControllerImpl;-><init>(Landroid/app/Activity;Lcom/twitter/android/card/o;Lclw;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Z)V

    return-object v0
.end method
