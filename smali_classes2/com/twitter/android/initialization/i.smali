.class Lcom/twitter/android/initialization/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Lcom/twitter/android/initialization/FrescoInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/FrescoInitializer;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/twitter/android/initialization/i;->a:Lcom/twitter/android/initialization/FrescoInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lch;->c()Let;

    move-result-object v0

    invoke-virtual {v0}, Let;->c()V

    .line 57
    return-void
.end method
