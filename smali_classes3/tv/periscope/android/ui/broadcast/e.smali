.class synthetic Ltv/periscope/android/ui/broadcast/e;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 568
    invoke-static {}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->values()[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/periscope/android/ui/broadcast/e;->b:[I

    :try_start_0
    sget-object v0, Ltv/periscope/android/ui/broadcast/e;->b:[I

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Ltv/periscope/android/ui/broadcast/e;->b:[I

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Ltv/periscope/android/ui/broadcast/e;->b:[I

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->c:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 490
    :goto_2
    invoke-static {}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->values()[Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ltv/periscope/android/ui/broadcast/e;->a:[I

    :try_start_3
    sget-object v0, Ltv/periscope/android/ui/broadcast/e;->a:[I

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Ltv/periscope/android/ui/broadcast/e;->a:[I

    sget-object v1, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 568
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
