.class final Lcom/twitter/android/client/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/twitter/android/client/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/android/client/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/ai;->a(Landroid/content/Context;)Lcom/twitter/library/client/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/ai;->b()V

    .line 115
    invoke-static {}, Lcom/twitter/library/scribe/LogCategory;->b()V

    .line 116
    invoke-static {}, Lcom/twitter/library/scribe/TwitterScribeLog;->j()V

    .line 117
    return-void
.end method
