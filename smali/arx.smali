.class public Larx;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private b:Lcom/twitter/model/core/Tweet;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Larx;->a:Landroid/support/v4/app/FragmentActivity;

    .line 35
    return-void
.end method

.method static synthetic a(Larx;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Larx;->a:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Larx;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Larx;

    invoke-direct {v0, p0}, Larx;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-object v0
.end method

.method static synthetic b(Larx;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Larx;->b:Lcom/twitter/model/core/Tweet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)Larx;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Larx;->b:Lcom/twitter/model/core/Tweet;

    .line 40
    return-object p0
.end method

.method public a()Lasa;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Larw;

    invoke-direct {v0, p0}, Larw;-><init>(Larx;)V

    return-object v0
.end method
