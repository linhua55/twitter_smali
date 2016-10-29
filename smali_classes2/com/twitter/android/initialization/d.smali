.class Lcom/twitter/android/initialization/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/fabric/CrashlyticsErrorLogger;

.field final synthetic b:Lcom/twitter/android/initialization/ErrorReporterInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/ErrorReporterInitializer;Lcom/twitter/fabric/CrashlyticsErrorLogger;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/twitter/android/initialization/d;->b:Lcom/twitter/android/initialization/ErrorReporterInitializer;

    iput-object p2, p0, Lcom/twitter/android/initialization/d;->a:Lcom/twitter/fabric/CrashlyticsErrorLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/initialization/d;->a:Lcom/twitter/fabric/CrashlyticsErrorLogger;

    const-string/jumbo v1, "error_logging_enabled"

    .line 60
    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 59
    invoke-static {v1}, Lcom/twitter/util/Tristate;->a(Z)Lcom/twitter/util/Tristate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Lcom/twitter/util/Tristate;)V

    .line 61
    return-void
.end method
