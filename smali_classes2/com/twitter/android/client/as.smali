.class public Lcom/twitter/android/client/as;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/twitter/android/client/as;->a:Landroid/content/Context;

    .line 17
    iput-wide p2, p0, Lcom/twitter/android/client/as;->b:J

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/client/as;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/client/as;->b:J

    invoke-static {v0, p1, v2, v3}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 25
    return-void
.end method
