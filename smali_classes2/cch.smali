.class Lcch;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccg;


# direct methods
.method constructor <init>(Lccg;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcch;->a:Lccg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 179
    iget-object v0, p0, Lcch;->a:Lccg;

    iget-object v0, v0, Lccg;->a:Lccf;

    const-string/jumbo v1, "geo_data_provider_enabled"

    .line 180
    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "geo_data_provider_google_play_services_enabled"

    .line 181
    invoke-static {v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "geo_data_provider_update_duration"

    .line 183
    invoke-static {v3, v5}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "geo_data_provider_update_interval"

    .line 185
    invoke-static {v4, v5}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v4

    .line 179
    invoke-virtual {v0, v1, v2, v3, v4}, Lccf;->a(ZZII)V

    .line 188
    return-void
.end method
