.class public Lcom/twitter/android/moments/ui/b;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/e;

.field private final b:Lcet;

.field private final c:Ldby;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/e;Lcet;Ldby;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/android/moments/ui/b;->a:Lcom/twitter/android/moments/ui/e;

    .line 43
    iput-object p2, p0, Lcom/twitter/android/moments/ui/b;->b:Lcet;

    .line 44
    iput-object p3, p0, Lcom/twitter/android/moments/ui/b;->c:Ldby;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/b;)Lcet;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/b;->b:Lcet;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Lcet;)Lcom/twitter/android/moments/ui/b;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/android/moments/ui/b;

    new-instance v1, Lcom/twitter/android/moments/ui/e;

    .line 36
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/android/moments/ui/e;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/twitter/library/client/bk;)V

    new-instance v2, Ldby;

    .line 37
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v3

    invoke-direct {v2, v3}, Ldby;-><init>(Lrx/t;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/twitter/android/moments/ui/b;-><init>(Lcom/twitter/android/moments/ui/e;Lcet;Ldby;)V

    .line 35
    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/b;)Ldby;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/b;->c:Ldby;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/b;)Lcom/twitter/android/moments/ui/e;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/b;->a:Lcom/twitter/android/moments/ui/e;

    return-object v0
.end method


# virtual methods
.method public a(JLjava/lang/String;Lcss;)Lrx/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcss;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/b;->a:Lcom/twitter/android/moments/ui/e;

    invoke-virtual {v0, p3}, Lcom/twitter/android/moments/ui/e;->a(Ljava/lang/String;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/c;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/twitter/android/moments/ui/c;-><init>(Lcom/twitter/android/moments/ui/b;JLcss;)V

    .line 62
    invoke-virtual {v0, v1}, Lrx/w;->b(Ldjf;)Lrx/w;

    move-result-object v0

    .line 61
    return-object v0
.end method
