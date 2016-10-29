.class public Lcom/twitter/android/client/bo;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lbki;

.field private final c:Lcom/twitter/android/client/br;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbki;Lcom/twitter/android/client/br;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/android/client/bo;->a:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/twitter/android/client/bo;->b:Lbki;

    .line 29
    iput-object p3, p0, Lcom/twitter/android/client/bo;->c:Lcom/twitter/android/client/br;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/client/bo;)Lbki;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/client/bo;->b:Lbki;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/twitter/android/client/bo;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/android/client/bo;

    invoke-static {p0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/client/br;

    invoke-direct {v2}, Lcom/twitter/android/client/br;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/android/client/bo;-><init>(Landroid/app/Activity;Lbki;Lcom/twitter/android/client/br;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/client/bo;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/client/bo;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/client/bo;)Lcom/twitter/android/client/br;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/client/bo;->c:Lcom/twitter/android/client/br;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/android/client/bp;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/bp;-><init>(Lcom/twitter/android/client/bo;)V

    invoke-static {v0}, Lrx/w;->a(Lrx/am;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/client/bo;->b:Lbki;

    invoke-virtual {v0}, Lbki;->b()Z

    move-result v0

    return v0
.end method
